  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movzbw %ah, %bx   #  1     0    4      OPC=movzbw_r16_rh   
  movsbq %bl, %rcx  #  2     0x4  4      OPC=movsbq_r64_r8   
  movzwl %cx, %ebx  #  3     0x8  3      OPC=movzwl_r32_r16  
  retq              #  4     0xb  1      OPC=retq            
                                                             
.size target, .-target
