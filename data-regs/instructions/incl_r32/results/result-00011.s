  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .set_szp_for_bx    #  1     0     5      OPC=callq_label   
  callq .read_sf_into_rcx  #  2     0x5   5      OPC=callq_label   
  xorq %rax, %rax          #  3     0xa   3      OPC=xorq_r64_r64  
  setae %cl                #  4     0xd   3      OPC=setae_r8      
  adcl %ecx, %ebx          #  5     0x10  2      OPC=adcl_r32_r32  
  retq                     #  6     0x12  1      OPC=retq          
                                                                   
.size target, .-target
