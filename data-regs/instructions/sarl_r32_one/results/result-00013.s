  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movslq %ebx, %rdi   #  1     0     3      OPC=movslq_r64_r32   
  sarq $0x1, %rdi     #  2     0x3   3      OPC=sarq_r64_one     
  cmovpew %di, %bx    #  3     0x6   4      OPC=cmovpew_r16_r16  
  movsbw %dil, %r10w  #  4     0xa   5      OPC=movsbw_r16_r8    
  cmovgew %r10w, %bx  #  5     0xf   5      OPC=cmovgew_r16_r16  
  xchgl %edi, %ebx    #  6     0x14  2      OPC=xchgl_r32_r32    
  retq                #  7     0x16  1      OPC=retq             
                                                                 
.size target, .-target
