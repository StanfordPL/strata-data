  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vmulpd %xmm2, %xmm1, %xmm11                   #  1     0     4      OPC=vmulpd_xmm_xmm_xmm     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label            
  vmovddup %xmm5, %xmm5                         #  3     0x9   4      OPC=vmovddup_xmm_xmm       
  movshdup %xmm5, %xmm7                         #  4     0xd   4      OPC=movshdup_xmm_xmm       
  vunpcklpd %xmm7, %xmm11, %xmm8                #  5     0x11  4      OPC=vunpcklpd_xmm_xmm_xmm  
  vcvttpd2dq %xmm7, %xmm14                      #  6     0x15  4      OPC=vcvttpd2dq_xmm_xmm     
  vhaddpd %ymm8, %ymm14, %ymm4                  #  7     0x19  5      OPC=vhaddpd_ymm_ymm_ymm    
  movups %xmm4, %xmm1                           #  8     0x1e  3      OPC=movups_xmm_xmm         
  retq                                          #  9     0x21  1      OPC=retq                   
                                                                                                 
.size target, .-target
