  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x40, %rax         #  1     0     10     OPC=movq_r64_imm64  
  callq .read_zf_into_rbx  #  2     0xa   5      OPC=callq_label     
  movzbw %bl, %r8w         #  3     0xf   5      OPC=movzbw_r16_r8   
  salw $0x1, %ax           #  4     0x14  3      OPC=salw_r16_one    
  decw %r8w                #  5     0x17  4      OPC=decw_r16        
  setbe %ah                #  6     0x1b  3      OPC=setbe_rh        
  retq                     #  7     0x1e  1      OPC=retq            
                                                                     
.size target, .-target
