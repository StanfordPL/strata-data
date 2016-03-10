  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  andb %cl, %bl     #  1     0    2      OPC=andb_r8_r8      
  xchgb %ch, %bh    #  2     0x2  2      OPC=xchgb_rh_rh     
  andb %ch, %bh     #  3     0x4  2      OPC=andb_rh_rh      
  movswl %bx, %esi  #  4     0x6  3      OPC=movswl_r32_r16  
  testl %esi, %esi  #  5     0x9  2      OPC=testl_r32_r32   
  retq              #  6     0xb  1      OPC=retq            
                                                             
.size target, .-target
