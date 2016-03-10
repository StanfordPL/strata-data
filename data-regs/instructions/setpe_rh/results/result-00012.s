  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  setpo %bh                #  1     0     3      OPC=setpo_rh      
  callq .read_pf_into_rcx  #  2     0x3   5      OPC=callq_label   
  shll $0x1, %ecx          #  3     0x8   2      OPC=shll_r32_one  
  setge %bl                #  4     0xa   3      OPC=setge_r8      
  decw %bx                 #  5     0xd   3      OPC=decw_r16      
  setbe %ah                #  6     0x10  3      OPC=setbe_rh      
  retq                     #  7     0x13  1      OPC=retq          
                                                                   
.size target, .-target
