  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x5, %rbx          #  1     0     10     OPC=movq_r64_imm64  
  setpo %bl                #  2     0xa   3      OPC=setpo_r8        
  shlq $0x1, %rbx          #  3     0xd   3      OPC=shlq_r64_one    
  callq .read_zf_into_rbx  #  4     0x10  5      OPC=callq_label     
  retq                     #  5     0x15  1      OPC=retq            
                                                                     
.size target, .-target
