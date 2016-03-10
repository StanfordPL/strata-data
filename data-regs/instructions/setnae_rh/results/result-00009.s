  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .read_cf_into_rcx            #  1     0     5      OPC=callq_label     
  callq .move_064_032_rcx_r12d_r13d  #  2     0x5   5      OPC=callq_label     
  callq .move_032_064_r12d_r13d_rdx  #  3     0xa   5      OPC=callq_label     
  movb %dl, %ch                      #  4     0xf   2      OPC=movb_rh_r8      
  movslq %ecx, %rax                  #  5     0x11  3      OPC=movslq_r64_r32  
  retq                               #  6     0x14  1      OPC=retq            
                                                                               
.size target, .-target
