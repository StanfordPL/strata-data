  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  xorl %eax, %eax     #  1     0     2      OPC=xorl_r32_r32     
  setnp %al           #  2     0x2   3      OPC=setnp_r8         
  setne %ah           #  3     0x5   3      OPC=setne_rh         
  movswq %bx, %r12    #  4     0x8   4      OPC=movswq_r64_r16   
  addq %r12, %rax     #  5     0xc   3      OPC=addq_r64_r64     
  sarq $0x1, %rax     #  6     0xf   3      OPC=sarq_r64_one     
  cmovnol %eax, %ebx  #  7     0x12  3      OPC=cmovnol_r32_r32  
  retq                #  8     0x15  1      OPC=retq             
                                                                 
.size target, .-target
