  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  cmc               #  1     0    1      OPC=cmc             
  notw %cx          #  2     0x1  3      OPC=notw_r16        
  adcw %cx, %bx     #  3     0x4  3      OPC=adcw_r16_r16    
  movswl %bx, %ebx  #  4     0x7  3      OPC=movswl_r32_r16  
  cmc               #  5     0xa  1      OPC=cmc             
  retq              #  6     0xb  1      OPC=retq            
                                                             
.size target, .-target
