  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movq $0x0, %rbx     #  1     0     10     OPC=movq_r64_imm64   
  setng %bl           #  2     0xa   3      OPC=setng_r8         
  popcntq %rbx, %rax  #  3     0xd   5      OPC=popcntq_r64_r64  
  xchgl %eax, %ebx    #  4     0x12  1      OPC=xchgl_r32_eax    
  shlw $0x1, %bx      #  5     0x13  3      OPC=shlw_r16_one     
  setp %ah            #  6     0x16  3      OPC=setp_rh          
  retq                #  7     0x19  1      OPC=retq             
                                                                 
.size target, .-target
