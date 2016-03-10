  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  movapd %xmm11, %xmm2                            #  2     0x5   5      OPC=movapd_xmm_xmm        
  vbroadcastss %xmm9, %xmm12                      #  3     0xa   5      OPC=vbroadcastss_xmm_xmm  
  punpckldq %xmm2, %xmm9                          #  4     0xf   5      OPC=punpckldq_xmm_xmm     
  vmovsd %xmm9, %xmm12, %xmm1                     #  5     0x14  5      OPC=vmovsd_xmm_xmm_xmm    
  retq                                            #  6     0x19  1      OPC=retq                  
                                                                                                  
.size target, .-target
