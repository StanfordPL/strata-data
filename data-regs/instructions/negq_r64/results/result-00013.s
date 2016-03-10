  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorq %rax, %rax   #  1     0    3      OPC=xorq_r64_r64   
  xchgq %rax, %rbx  #  2     0x3  2      OPC=xchgq_r64_rax  
  setpo %bh         #  3     0x5  3      OPC=setpo_rh       
  subq %rax, %rbx   #  4     0x8  3      OPC=subq_r64_r64   
  retq              #  5     0xb  1      OPC=retq           
                                                            
.size target, .-target
