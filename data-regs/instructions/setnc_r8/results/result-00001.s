  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_cf_into_rcx  #  1     0     5      OPC=callq_label    
  xorw %bx, %bx            #  2     0x5   3      OPC=xorw_r16_r16   
  xaddl %ecx, %ecx         #  3     0x8   3      OPC=xaddl_r32_r32  
  setbe %bl                #  4     0xb   3      OPC=setbe_r8       
  xaddb %bh, %bl           #  5     0xe   3      OPC=xaddb_r8_rh    
  retq                     #  6     0x11  1      OPC=retq           
                                                                    
.size target, .-target
