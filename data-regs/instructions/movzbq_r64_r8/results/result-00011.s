  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .set_cf            #  1     0     5      OPC=callq_label     
  callq .read_cf_into_rbx  #  2     0x5   5      OPC=callq_label     
  movzwl %bx, %r8d         #  3     0xa   4      OPC=movzwl_r32_r16  
  rcll $0x1, %r8d          #  4     0xe   3      OPC=rcll_r32_one    
  callq .read_cf_into_rbx  #  5     0x11  5      OPC=callq_label     
  adcb %cl, %bl            #  6     0x16  2      OPC=adcb_r8_r8      
  retq                     #  7     0x18  1      OPC=retq            
                                                                     
.size target, .-target
