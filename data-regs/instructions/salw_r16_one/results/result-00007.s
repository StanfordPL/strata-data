  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  movb %bl, %ch   #  1     0    2      OPC=movb_rh_r8    
  xaddb %bl, %ch  #  2     0x2  3      OPC=xaddb_rh_r8   
  shlw $0x1, %bx  #  3     0x5  3      OPC=shlw_r16_one  
  retq            #  4     0x8  1      OPC=retq          
                                                         
.size target, .-target
