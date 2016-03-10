  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movswq %cx, %r10    #  1     0     4      OPC=movswq_r64_r16   
  popcntw %r10w, %di  #  2     0x4   6      OPC=popcntw_r16_r16  
  movq $0x4, %r8      #  3     0xa   10     OPC=movq_r64_imm64   
  rclw $0x1, %r8w     #  4     0x14  4      OPC=rclw_r16_one     
  adcl %ebx, %ecx     #  5     0x18  2      OPC=adcl_r32_r32     
  xchgl %ecx, %ebx    #  6     0x1a  2      OPC=xchgl_r32_r32    
  retq                #  7     0x1c  1      OPC=retq             
                                                                 
.size target, .-target
