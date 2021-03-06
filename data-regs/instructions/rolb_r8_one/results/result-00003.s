  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movsbl %bl, %r12d   #  1     0    4      OPC=movsbl_r32_r8   
  movswq %r12w, %rsi  #  2     0x4  4      OPC=movswq_r64_r16  
  shll $0x1, %esi     #  3     0x8  2      OPC=shll_r32_one    
  adcb %r12b, %bl     #  4     0xa  3      OPC=adcb_r8_r8      
  retq                #  5     0xd  1      OPC=retq            
                                                               
.size target, .-target
