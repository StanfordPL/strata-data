  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  pmovzxwd %xmm10, %xmm1                          #  2     0x5   6      OPC=pmovzxwd_xmm_xmm    
  vsubsd %xmm1, %xmm1, %xmm7                      #  3     0xb   4      OPC=vsubsd_xmm_xmm_xmm  
  movsd %xmm7, %xmm1                              #  4     0xf   4      OPC=movsd_xmm_xmm       
  retq                                            #  5     0x13  1      OPC=retq                
                                                                                                
.size target, .-target
