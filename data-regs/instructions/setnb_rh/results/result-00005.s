  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label     
  movq $0x4, %rax          #  2     0x5   10     OPC=movq_r64_imm64  
  adcq %rax, %rbx          #  3     0xf   3      OPC=adcq_r64_r64    
  setnp %ah                #  4     0x12  3      OPC=setnp_rh        
  retq                     #  5     0x15  1      OPC=retq            
                                                                     
.size target, .-target
