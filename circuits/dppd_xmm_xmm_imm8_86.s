  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vmulsd %xmm2, %xmm1, %xmm3         #  1     0     4      OPC=vmulsd_xmm_xmm_xmm  
  pandn %xmm1, %xmm1                 #  2     0x4   4      OPC=pandn_xmm_xmm       
  callq .move_128_64_xmm3_xmm8_xmm9  #  3     0x8   5      OPC=callq_label         
  haddpd %xmm8, %xmm1                #  4     0xd   5      OPC=haddpd_xmm_xmm      
  retq                               #  5     0x12  1      OPC=retq                
                                                                                   
.size target, .-target
