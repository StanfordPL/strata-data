  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  movapd %xmm2, %xmm8      #  1     0    5      OPC=movapd_xmm_xmm      
  punpcklqdq %xmm8, %xmm1  #  2     0x5  5      OPC=punpcklqdq_xmm_xmm  
  retq                     #  3     0xa  1      OPC=retq                
                                                                        
.size target, .-target
