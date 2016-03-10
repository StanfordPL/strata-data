  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  vmovq %xmm1, %rbp  #  1     0     5      OPC=vmovq_r64_xmm   
  movq $0x0, %rbx    #  2     0x5   10     OPC=movq_r64_imm64  
  salb $0x1, %bl     #  3     0xf   2      OPC=salb_r8_one     
  xorb %bh, %bl      #  4     0x11  2      OPC=xorb_r8_rh      
  xchgl %ebp, %ebx   #  5     0x13  2      OPC=xchgl_r32_r32   
  retq               #  6     0x15  1      OPC=retq            
                                                               
.size target, .-target
