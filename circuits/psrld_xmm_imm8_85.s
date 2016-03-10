  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm1, %xmm9, %xmm9      #  2     0x5   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vsqrtpd %xmm9, %xmm5               #  3     0x9   5      OPC=vsqrtpd_xmm_xmm        
  vmovddup %ymm5, %ymm8              #  4     0xe   4      OPC=vmovddup_ymm_ymm       
  vcvtpd2dqx %xmm8, %xmm3            #  5     0x12  5      OPC=vcvtpd2dqx_xmm_xmm     
  movupd %xmm3, %xmm1                #  6     0x17  4      OPC=movupd_xmm_xmm         
  retq                               #  7     0x1b  1      OPC=retq                   
                                                                                      
.size target, .-target
