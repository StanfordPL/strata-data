  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP   Bytes  Opcode               
.target:             #        0     0      OPC=<label>          
  movzwl %bx, %esp   #  1     0     3      OPC=movzwl_r32_r16   
  movzbw %ch, %bx    #  2     0x3   4      OPC=movzbw_r16_rh    
  movl %esp, %r12d   #  3     0x7   3      OPC=movl_r32_r32     
  setnp %ah          #  4     0xa   3      OPC=setnp_rh         
  andl %r12d, %esp   #  5     0xd   3      OPC=andl_r32_r32     
  addb %ah, %bh      #  6     0x10  2      OPC=addb_rh_rh       
  cmovel %esp, %ebx  #  7     0x12  3      OPC=cmovel_r32_r32   
  cmovnzw %cx, %bx   #  8     0x15  4      OPC=cmovnzw_r16_r16  
  retq               #  9     0x19  1      OPC=retq             
                                                                
.size target, .-target
