  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  callq .move_032_016_ebx_r12w_r13w  #  1     0    5      OPC=callq_label    
  xaddw %r13w, %r13w                 #  2     0x5  5      OPC=xaddw_r16_r16  
  rcll $0x1, %ebx                    #  3     0xa  2      OPC=rcll_r32_one   
  retq                               #  4     0xc  1      OPC=retq           
                                                                             
.size target, .-target
