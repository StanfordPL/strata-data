  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setnbe %bpl        #  1     0    4      OPC=setnbe_r8       
  xaddb %bpl, %bpl   #  2     0x4  4      OPC=xaddb_r8_r8     
  cmovel %ecx, %ebx  #  3     0x8  3      OPC=cmovel_r32_r32  
  retq               #  4     0xb  1      OPC=retq            
                                                              
.size target, .-target
