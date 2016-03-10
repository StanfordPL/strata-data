  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64  
  callq .read_sf_into_rcx  #  2     0x3   5      OPC=callq_label   
  decw %cx                 #  3     0x8   3      OPC=decw_r16      
  xorw %cx, %ax            #  4     0xb   3      OPC=xorw_r16_r16  
  addb %al, %ch            #  5     0xe   2      OPC=addb_rh_r8    
  retq                     #  6     0x10  1      OPC=retq          
                                                                   
.size target, .-target
