  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  setnle %dl             #  1     0    3      OPC=setnle_r8        
  callq .write_dl_to_sf  #  2     0x3  5      OPC=callq_label      
  movw %cx, %cx          #  3     0x8  3      OPC=movw_r16_r16     
  cmovnsw %cx, %bx       #  4     0xb  4      OPC=cmovnsw_r16_r16  
  retq                   #  5     0xf  1      OPC=retq             
                                                                   
.size target, .-target
