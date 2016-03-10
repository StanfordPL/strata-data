  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  xorb %al, %al     #  1     0    2      OPC=xorb_r8_r8      
  movswq %ax, %rsi  #  2     0x2  4      OPC=movswq_r64_r16  
  addb %bh, %ah     #  3     0x6  2      OPC=addb_rh_rh      
  movswl %si, %ebx  #  4     0x8  3      OPC=movswl_r32_r16  
  retq              #  5     0xb  1      OPC=retq            
                                                             
.size target, .-target
