  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  vcvtpd2ps %xmm6, %xmm9                        #  2     0x5   4      OPC=vcvtpd2ps_xmm_xmm    
  mulpd %xmm2, %xmm1                            #  3     0x9   4      OPC=mulpd_xmm_xmm        
  vhaddpd %xmm1, %xmm9, %xmm12                  #  4     0xd   4      OPC=vhaddpd_xmm_xmm_xmm  
  movupd %xmm12, %xmm1                          #  5     0x11  5      OPC=movupd_xmm_xmm       
  retq                                          #  6     0x16  1      OPC=retq                 
                                                                                               
.size target, .-target
