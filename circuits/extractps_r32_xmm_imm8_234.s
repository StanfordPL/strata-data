  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vrsqrtps %xmm1, %xmm7                #  1     0     4      OPC=vrsqrtps_xmm_xmm       
  vunpckhpd %xmm7, %xmm1, %xmm13       #  2     0x4   4      OPC=vunpckhpd_xmm_xmm_xmm  
  cvtss2sd %xmm13, %xmm1               #  3     0x8   5      OPC=cvtss2sd_xmm_xmm       
  callq .move_128_64_xmm1_xmm12_xmm13  #  4     0xd   5      OPC=callq_label            
  movd %xmm13, %ebx                    #  5     0x12  5      OPC=movd_r32_xmm           
  retq                                 #  6     0x17  1      OPC=retq                   
                                                                                        
.size target, .-target
