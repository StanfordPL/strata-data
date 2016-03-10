  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP   Bytes  Opcode             
.target:                 #        0     0      OPC=<label>        
  callq .set_szp_for_bx  #  1     0     5      OPC=callq_label    
  setz %r8b              #  2     0x5   4      OPC=setz_r8        
  movzbq %r8b, %rax      #  3     0x9   4      OPC=movzbq_r64_r8  
  decw %ax               #  4     0xd   3      OPC=decw_r16       
  shlb $0x1, %al         #  5     0x10  2      OPC=shlb_r8_one    
  notw %bx               #  6     0x12  3      OPC=notw_r16       
  incw %bx               #  7     0x15  3      OPC=incw_r16       
  retq                   #  8     0x18  1      OPC=retq           
                                                                  
.size target, .-target
