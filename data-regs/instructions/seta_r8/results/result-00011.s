  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  setnbe %dl               #  1     0     3      OPC=setnbe_r8      
  callq .read_zf_into_rbx  #  2     0x3   5      OPC=callq_label    
  movsbw %dl, %r8w         #  3     0x8   5      OPC=movsbw_r16_r8  
  xchgb %bl, %r8b          #  4     0xd   3      OPC=xchgb_r8_r8    
  retq                     #  5     0x10  1      OPC=retq           
                                                                    
.size target, .-target
