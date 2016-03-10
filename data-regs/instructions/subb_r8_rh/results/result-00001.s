  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movq $0xffffffffffffff80, %rcx   #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rcx_r8d_r9d  #  2     0xa   5      OPC=callq_label     
  andl %r9d, %ecx                  #  3     0xf   3      OPC=andl_r32_r32    
  sbbb %ah, %bl                    #  4     0x12  2      OPC=sbbb_r8_rh      
  retq                             #  5     0x14  1      OPC=retq            
                                                                             
.size target, .-target
