  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  movzbw %bl, %r12w   #  1     0     5      OPC=movzbw_r16_r8   
  xaddw %r12w, %bx    #  2     0x5   5      OPC=xaddw_r16_r16   
  movswq %r12w, %rbx  #  3     0xa   4      OPC=movswq_r64_r16  
  sarq $0x1, %rbx     #  4     0xe   3      OPC=sarq_r64_one    
  retq                #  5     0x11  1      OPC=retq            
                                                                
.size target, .-target
