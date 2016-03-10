  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movzbl %bl, %ebp  #  1     0    3      OPC=movzbl_r32_r8   
  notw %bp          #  2     0x3  3      OPC=notw_r16        
  movzwl %bp, %ebx  #  3     0x6  3      OPC=movzwl_r32_r16  
  retq              #  4     0x9  1      OPC=retq            
                                                             
.size target, .-target
