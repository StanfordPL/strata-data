  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  xorb %al, %al     #  1     0    2      OPC=xorb_r8_r8      
  setz %dl          #  2     0x2  3      OPC=setz_r8         
  xchgb %dl, %bh    #  3     0x5  2      OPC=xchgb_rh_r8     
  movswl %ax, %ebx  #  4     0x7  3      OPC=movswl_r32_r16  
  addb %dl, %ah     #  5     0xa  2      OPC=addb_rh_r8      
  retq              #  6     0xc  1      OPC=retq            
                                                             
.size target, .-target
