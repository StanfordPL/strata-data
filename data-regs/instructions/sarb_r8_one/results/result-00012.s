  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movsbq %bl, %r13    #  1     0    4      OPC=movsbq_r64_r8   
  sarw $0x1, %r13w    #  2     0x4  4      OPC=sarw_r16_one    
  movzwq %r13w, %rbx  #  3     0x8  4      OPC=movzwq_r64_r16  
  retq                #  4     0xc  1      OPC=retq            
                                                               
.size target, .-target
