  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode             
.target:                          #        0     0      OPC=<label>        
  divps %xmm3, %xmm2              #  1     0     3      OPC=divps_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  2     0x3   5      OPC=callq_label    
  vmovq %r8, %xmm1                #  3     0x8   5      OPC=vmovq_xmm_r64  
  callq .move_064_128_r8_r9_xmm1  #  4     0xd   5      OPC=callq_label    
  retq                            #  5     0x12  1      OPC=retq           
                                                                           
.size target, .-target
