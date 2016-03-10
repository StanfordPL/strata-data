  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label    
  setnbe %r15b             #  2     0x5   4      OPC=setnbe_r8      
  movzbw %r15b, %cx        #  3     0x9   5      OPC=movzbw_r16_r8  
  xaddb %bh, %cl           #  4     0xe   3      OPC=xaddb_r8_rh    
  callq .read_zf_into_rcx  #  5     0x11  5      OPC=callq_label    
  setnz %bh                #  6     0x16  3      OPC=setnz_rh       
  xaddl %ebx, %ecx         #  7     0x19  3      OPC=xaddl_r32_r32  
  retq                     #  8     0x1c  1      OPC=retq           
                                                                    
.size target, .-target
