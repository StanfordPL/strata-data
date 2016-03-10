  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode            
.target:                          #        0     0      OPC=<label>       
  callq .read_zf_into_rbx         #  1     0     5      OPC=callq_label   
  rcll $0x1, %ebx                 #  2     0x5   2      OPC=rcll_r32_one  
  callq .move_016_008_bx_r8b_r9b  #  3     0x7   5      OPC=callq_label   
  shlb $0x1, %r8b                 #  4     0xc   3      OPC=shlb_r8_one   
  setne %bl                       #  5     0xf   3      OPC=setne_r8      
  retq                            #  6     0x12  1      OPC=retq          
                                                                          
.size target, .-target
