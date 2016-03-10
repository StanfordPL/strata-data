  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label     
  callq .set_szp_for_rbx   #  2     0x5   5      OPC=callq_label     
  movq $0x80, %rbx         #  3     0xa   10     OPC=movq_r64_imm64  
  rolq $0x1, %rbx          #  4     0x14  3      OPC=rolq_r64_one    
  setnbe %bl               #  5     0x17  3      OPC=setnbe_r8       
  retq                     #  6     0x1a  1      OPC=retq            
                                                                     
.size target, .-target
