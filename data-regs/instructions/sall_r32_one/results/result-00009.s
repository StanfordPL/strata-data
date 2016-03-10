  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  callq .move_032_016_ebx_r12w_r13w  #  1     0    5      OPC=callq_label    
  xchgw %bx, %r12w                   #  2     0x5  4      OPC=xchgw_r16_r16  
  shll $0x1, %ebx                    #  3     0x9  2      OPC=shll_r32_one   
  retq                               #  4     0xb  1      OPC=retq           
                                                                             
.size target, .-target
