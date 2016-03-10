  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x0, %rbx          #  1     0     10     OPC=movq_r64_imm64  
  adcq %rbx, %rbx          #  2     0xa   3      OPC=adcq_r64_r64    
  callq .set_szp_for_bl    #  3     0xd   5      OPC=callq_label     
  callq .read_zf_into_rbx  #  4     0x12  5      OPC=callq_label     
  retq                     #  5     0x17  1      OPC=retq            
                                                                     
.size target, .-target
