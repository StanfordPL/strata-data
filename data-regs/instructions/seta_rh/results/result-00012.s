  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  setnbe %dil        #  1     0     4      OPC=setnbe_r8       
  movq $0x1, %rax    #  2     0x4   10     OPC=movq_r64_imm64  
  movzbq %dil, %r15  #  3     0xe   4      OPC=movzbq_r64_r8   
  xchgl %r15d, %eax  #  4     0x12  2      OPC=xchgl_eax_r32   
  addb %al, %ah      #  5     0x14  2      OPC=addb_rh_r8      
  retq               #  6     0x16  1      OPC=retq            
                                                               
.size target, .-target
