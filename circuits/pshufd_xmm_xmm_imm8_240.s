  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vbroadcastss %xmm7, %xmm11                    #  2     0x5   5      OPC=vbroadcastss_xmm_xmm  
  movsldup %xmm2, %xmm10                        #  3     0xa   5      OPC=movsldup_xmm_xmm      
  callq .move_64_128_xmm10_xmm11_xmm1           #  4     0xf   5      OPC=callq_label           
  retq                                          #  5     0x14  1      OPC=retq                  
                                                                                                
.size target, .-target
