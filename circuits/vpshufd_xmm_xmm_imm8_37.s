  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  movupd %xmm8, %xmm11                            #  2     0x5   5      OPC=movupd_xmm_xmm        
  vbroadcastss %xmm9, %xmm13                      #  3     0xa   5      OPC=vbroadcastss_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  4     0xf   5      OPC=callq_label           
  vmovhlps %xmm13, %xmm2, %xmm1                   #  5     0x14  5      OPC=vmovhlps_xmm_xmm_xmm  
  retq                                            #  6     0x19  1      OPC=retq                  
                                                                                                  
.size target, .-target
