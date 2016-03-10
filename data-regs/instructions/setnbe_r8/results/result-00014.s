  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .read_cf_into_rbx            #  1     0     5      OPC=callq_label   
  callq .read_zf_into_rcx            #  2     0x5   5      OPC=callq_label   
  callq .move_064_032_rcx_r10d_r11d  #  3     0xa   5      OPC=callq_label   
  callq .clear_cf                    #  4     0xf   5      OPC=callq_label   
  adcl %ebx, %r10d                   #  5     0x14  3      OPC=adcl_r32_r32  
  sete %bl                           #  6     0x17  3      OPC=sete_r8       
  retq                               #  7     0x1a  1      OPC=retq          
                                                                             
.size target, .-target
