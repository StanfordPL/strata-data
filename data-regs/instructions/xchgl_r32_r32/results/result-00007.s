  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .move_032_016_ecx_r12w_r13w  #  1     0     5      OPC=callq_label   
  clc                                #  2     0x5   1      OPC=clc           
  callq .read_cf_into_rcx            #  3     0x6   5      OPC=callq_label   
  adcl %ebx, %ecx                    #  4     0xb   2      OPC=adcl_r32_r32  
  callq .read_sf_into_rbx            #  5     0xd   5      OPC=callq_label   
  callq .move_016_032_r12w_r13w_ebx  #  6     0x12  5      OPC=callq_label   
  retq                               #  7     0x17  1      OPC=retq          
                                                                             
.size target, .-target
