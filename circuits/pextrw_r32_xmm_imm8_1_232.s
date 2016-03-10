  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text              #  Line  RIP  Bytes  Opcode            
.target:            #        0    0      OPC=<label>       
  xorq %rbx, %rbx   #  1     0    3      OPC=xorq_r64_r64  
  movq %xmm1, %rcx  #  2     0x3  5      OPC=movq_r64_xmm  
  movb %ch, %ch     #  3     0x8  2      OPC=movb_rh_rh    
  decw %bx          #  4     0xa  3      OPC=decw_r16      
  andl %ecx, %ebx   #  5     0xd  2      OPC=andl_r32_r32  
  retq              #  6     0xf  1      OPC=retq          
                                                           
.size target, .-target
