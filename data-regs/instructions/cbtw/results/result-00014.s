  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  callq .clear_cf     #  1     0     5      OPC=callq_label     
  setnae %ah          #  2     0x5   3      OPC=setnae_rh       
  movzwl %ax, %r13d   #  3     0x8   4      OPC=movzwl_r32_r16  
  movsbq %r13b, %rax  #  4     0xc   4      OPC=movsbq_r64_r8   
  retq                #  5     0x10  1      OPC=retq            
                                                                
.size target, .-target
