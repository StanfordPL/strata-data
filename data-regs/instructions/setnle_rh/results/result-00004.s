  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode           
.target:            #        0    0      OPC=<label>      
  setng %r13b       #  1     0    4      OPC=setng_r8     
  salb $0x1, %r13b  #  2     0x4  3      OPC=salb_r8_one  
  negb %r13b        #  3     0x7  3      OPC=negb_r8      
  sete %ah          #  4     0xa  3      OPC=sete_rh      
  retq              #  5     0xd  1      OPC=retq         
                                                          
.size target, .-target
