  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  setnl %cl         #  1     0    3      OPC=setnl_r8       
  movzbq %cl, %rax  #  2     0x3  4      OPC=movzbq_r64_r8  
  salw $0x1, %ax    #  3     0x7  3      OPC=salw_r16_one   
  setpo %ah         #  4     0xa  3      OPC=setpo_rh       
  retq              #  5     0xd  1      OPC=retq           
                                                            
.size target, .-target
