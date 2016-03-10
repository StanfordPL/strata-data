  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label            
  movd %r9d, %xmm1                          #  2     0x5   5      OPC=movd_xmm_r32           
  vaddsd %xmm1, %xmm2, %xmm9                #  3     0xa   4      OPC=vaddsd_xmm_xmm_xmm     
  vmovapd %xmm1, %xmm11                     #  4     0xe   4      OPC=vmovapd_xmm_xmm        
  unpckhpd %xmm2, %xmm9                     #  5     0x12  5      OPC=unpckhpd_xmm_xmm       
  vunpcklps %xmm9, %xmm11, %xmm2            #  6     0x17  5      OPC=vunpcklps_xmm_xmm_xmm  
  movddup %xmm2, %xmm1                      #  7     0x1c  4      OPC=movddup_xmm_xmm        
  retq                                      #  8     0x20  1      OPC=retq                   
                                                                                             
.size target, .-target
