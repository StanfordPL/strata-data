  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vdivss %xmm1, %xmm1, %xmm4                    #  1     0     4      OPC=vdivss_xmm_xmm_xmm       
  vpunpcklqdq %ymm4, %ymm4, %ymm3               #  2     0x4   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vrcpps %ymm3, %ymm14                          #  3     0x8   4      OPC=vrcpps_ymm_ymm           
  movshdup %xmm1, %xmm4                         #  4     0xc   4      OPC=movshdup_xmm_xmm         
  movlhps %xmm3, %xmm1                          #  5     0x10  3      OPC=movlhps_xmm_xmm          
  vcvtsd2ss %xmm14, %xmm4, %xmm2                #  6     0x13  5      OPC=vcvtsd2ss_xmm_xmm_xmm    
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  7     0x18  5      OPC=callq_label              
  vcvtsd2sil %xmm1, %ebx                        #  8     0x1d  4      OPC=vcvtsd2sil_r32_xmm       
  xchgl %ebx, %r12d                             #  9     0x21  3      OPC=xchgl_r32_r32            
  retq                                          #  10    0x24  1      OPC=retq                     
                                                                                                   
.size target, .-target
