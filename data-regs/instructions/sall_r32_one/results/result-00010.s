  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .move_032_016_ebx_r12w_r13w  #  1     0     5      OPC=callq_label   
  callq .move_016_032_r12w_r13w_ebx  #  2     0x5   5      OPC=callq_label   
  shll $0x1, %ebx                    #  3     0xa   2      OPC=shll_r32_one  
  callq .set_szp_for_ebx             #  4     0xc   5      OPC=callq_label   
  retq                               #  5     0x11  1      OPC=retq          
                                                                             
.size target, .-target
