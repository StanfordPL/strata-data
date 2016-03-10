  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label          
  movd %r11d, %xmm13                            #  2     0x5   5      OPC=movd_xmm_r32         
  vhaddpd %xmm13, %xmm13, %xmm1                 #  3     0xa   5      OPC=vhaddpd_xmm_xmm_xmm  
  movsldup %xmm1, %xmm1                         #  4     0xf   4      OPC=movsldup_xmm_xmm     
  retq                                          #  5     0x13  1      OPC=retq                 
                                                                                               
.size target, .-target
