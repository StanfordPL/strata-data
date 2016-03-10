  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vrcpps %xmm1, %xmm14    #  1     0    4      OPC=vrcpps_xmm_xmm     
  vmovmskpd %xmm14, %ecx  #  2     0x4  5      OPC=vmovmskpd_r32_xmm  
  movzbl %cl, %ebx        #  3     0x9  3      OPC=movzbl_r32_r8      
  retq                    #  4     0xc  1      OPC=retq               
                                                                      
.size target, .-target
