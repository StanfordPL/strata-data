  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movsbq %bl, %rbx  #  1     0    4      OPC=movsbq_r64_r8   
  movzwl %bx, %edx  #  2     0x4  3      OPC=movzwl_r32_r16  
  orb %dh, %bh      #  3     0x7  2      OPC=orb_rh_rh       
  sarq $0x1, %rbx   #  4     0x9  3      OPC=sarq_r64_one    
  retq              #  5     0xc  1      OPC=retq            
                                                             
.size target, .-target
