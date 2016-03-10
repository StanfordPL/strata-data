  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  setnbe %r9b              #  1     0     4      OPC=setnbe_r8      
  movsbl %r9b, %r8d        #  2     0x4   4      OPC=movsbl_r32_r8  
  shlb $0x1, %r8b          #  3     0x8   3      OPC=shlb_r8_one    
  callq .read_pf_into_rbx  #  4     0xb   5      OPC=callq_label    
  retq                     #  5     0x10  1      OPC=retq           
                                                                    
.size target, .-target
